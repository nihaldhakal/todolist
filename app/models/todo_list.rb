class TodoList < ApplicationRecord
validates :title, presence: true
validates :description, length: { minimum: 5 }
end
