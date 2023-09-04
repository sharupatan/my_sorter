module BooksHelper
  def status_button(label, status)
		link_to books_path(status: status), class: 'me-3' do
			content_tag(:p, label, class: 'btn btn-primary')
		end
	end

	def book_headers
		content_tag(:th, 'Id')+
		content_tag(:th, 'Name')+
		content_tag(:th, 'Price')+
		content_tag(:th, 'Availability')+
		content_tag(:th, 'Actions')
	end

	def book_record(book,index)
		content_tag(:td, index+1)+
		content_tag(:td, book.name)+
		content_tag(:td, book.price)+
		content_tag(:td, book.status)+
		content_tag(:td) do
			link_to(:edit, edit_book_path(book), class: 'btn btn-info me-2')+
			link_to(:delete, book_path(book), data: { turbo_method: :delete}, class: 'btn btn-danger')
		end
	end
end