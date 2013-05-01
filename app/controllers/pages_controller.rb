class PagesController < HighVoltage::PagesController
  layout :layout_for_page

  protected
  def layout_for_page
    if params[:id] == 'home'
      'home'
    else
      'application'
    end
  end
end
