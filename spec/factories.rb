Factory.define(:event) do |f|
  f.sequence(:name) {|n| "Event #{n}"}
end
