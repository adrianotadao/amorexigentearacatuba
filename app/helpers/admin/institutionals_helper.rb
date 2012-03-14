module Admin::InstitutionalsHelper
  def setup_institutional(institutional)
    institutional.tap do |r|
      r.build_logo if r.logo.blank?
    end
  end
end