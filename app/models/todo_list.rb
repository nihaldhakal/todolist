class TodoList < ApplicationRecord
validates :title, presence: true
validates :description, length: { minimum: 5 }
validates :priority, presence: true
end
