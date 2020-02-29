# require 'rails_helper'

# module Mutations
#   module Case
#     RSpec.describe CreateBook, type: :request do
#       describe '.resolve' do
#         # it 'creates a case' do          
#         #   expect do
            
#         #   end.to change { Book.count }.by(1)
#         # end

#         # it 'returns a case' do          
#         #   json = JSON.parse(response.body)
#         #   data = json['data']['createCase']

#         #   expect(data).to include(
#         #     'id' => be_present,
#         #     'title' => 'Test Title',
#         #     'description' => 'Test Description',
#         #     'value' => 1000.00,
#         #     'courtDate' => '01-01-2020'
#         #   )
#         # end

#         it 'returns a case' do
#           book = create(title: 'Test Title', description: 'Test Description', value: 1000.00, courtDate: '01-01-2020')

#           post '/graphql', params: { query: query(id: case.id) }

#           json = JSON.parse(response.body)
#           data = json['data']['createCase']

#           expect(data).to include(
#             'id' => be_present,
#             'title' => 'Test Title',
#             'description' => 'Test Description',
#             'value' => 1000.00,
#             'courtDate' => '01-01-2020'
#           )
#       end

#       def query()
#         <<~GQL
#           mutation {
#             createCase(
#               title: "Title 1",
#               description: "Description 1",
#               value:1000.00,
#               courtDate: "01-01-2020"  
#             ) {
#               id,
#               title,
#               description,
#               value,
#               courtDate
#             }
#           }
#         GQL
#       end
#     end
#   end
# end