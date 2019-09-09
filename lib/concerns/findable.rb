module Concerns::Findable

  def find_by_name(name)
    self.all.find {|instance| instance.name == name}
  end


end
