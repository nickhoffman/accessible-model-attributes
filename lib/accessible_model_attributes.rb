module AccessibleModelAttributes
  # self.extract() {{{
  #
  # Given a model and a +Hash+ of model attributes, returns a subset of the +Hash+ that only contains attributes marked as "accessible" using #attr_accessible .
  #
  def self.extract(model, attributes)
    attributes.reject do |key, value|
      !model.read_inheritable_attribute('attr_accessible').include? key.to_s
    end
  end # }}}
end
