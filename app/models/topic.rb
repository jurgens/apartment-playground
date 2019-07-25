class Topic < ApplicationRecord
  has_many :topic_users, class_name: 'TopicUser'
end
