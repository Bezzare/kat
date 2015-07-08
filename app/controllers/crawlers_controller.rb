
class CrawlersController < ApplicationController

  def new
  end

  def create
    new_records = crawl
    flash[:success] = "Movie DB has been updated with #{new_records} new movies."
    redirect_to movies_url
  end

  private

    def crawl
        records = 0
        for page in 1..2
            records += retrieve(page)
        end
        return records
    end

    def retrieve(page)
        logger.debug "retrieving page #{page}"

        site = "http://kat.cr/movies/#{page}/?field=seeders&sorder=desc"
        local_fname = "#{LOCAL_DIR}/#{page}.html"
        local_dir = 'data_hold'

        FileUtils.makedirs(LOCAL_DIR) unless File.exists?local_dir

        if File.exists?(local_fname)
            logger.debug "Reading local #{local_fname}"
            page = Nokogiri::HTML(open(local_fname))
        else
            logger.debug "Fetching #{site}"
            page = Nokogiri::HTML(open(site))
            File.open(local_fname, "w") { |f| f.write(page.to_html)}
        end

        odd = extract_records(page.css("tr.odd"))
        even = extract_records(page.css("tr.even"))
        logger.debug "retrieved #{odd+even} records"

        return odd+even
    end

    def extract_records(records)
        base = "http://kat.cr"
        new_records = 0
        records.each do |r|
            maincell = r.css("a.cellMainLink")[0]
            m = Movie.new(link: base + maincell["href"],
                          name: maincell.text,
                          size:  r.css("td")[1].text,
                          files: r.css("td")[2].text,
                          age:   r.css("td")[3].text,
                          seed:  r.css("td")[4].text,
                          leech: r.css("td")[5].text,
                          imdb: 0)
            new_records += 1 if m.save
        end
        logger.debug "#{new_records} new records"

        return new_records
    end
end
