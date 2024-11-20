=begin
service_response = {
available: [
  field1,
  field2,
  field3,
  field4
],
editable: [
field1,
field2,
field4
]
}

Fields which are only present in available and not in editable should be locked.
so field3 should be locked/non editable
=end


class LockFields

  def initialize(service_response)
    @profile_fields = service_response
  end

  def lock_fields
    inert_fields = @profile.fields[:available].reject { |profile_field| @profile.fields[:editable].include?(profile_field) }
    inert_fields.each { |field| field.lock_field! }
  end
  
end

=begin
.reject removes all those fields which are also present in editable. Similar to @profile.fields[:available] - @profile.fields[:editable]
=end