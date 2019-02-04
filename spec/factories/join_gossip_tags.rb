FactoryBot.define do
  factory :join_gossip_tag do
    tag { Tag.create(title: "MyTag") }
    gossip { Gossip.create(title: "Gossip title", content: "Gossip Content") }
  end
end
