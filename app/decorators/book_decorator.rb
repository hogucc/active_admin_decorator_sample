
  class BookDecorator
    attr_reader :book
    delegate_missing_to :book

    def initialize(book)
      @book = book
    end

    def author_name_with_honor
      "#{book.author}さん"
    end

    def decorated?
      true
    end

    def model
      book
    end

    def to_param
      book.id
    end
  end


