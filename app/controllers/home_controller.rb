class HomeController < ApplicationController
  def index
    @libraries = get_libraries
  end

  protected
  def get_libraries
    libraries = []
    libraries << {
      name: "AlumilERP.dll",
      customer: "Alumil Greece",
      url: "http://www.google.com"
    }

    libraries << {
      name: "DCManage",
      customer: "Orosimo software",
      url: "http://www.in.gr"
    }

    libraries << {
      name: "Elgeka.dll",
      customer: "Elgeka - Ferfelis Romania",
      url: "http://www.elgeka.com"
    }
  end
end
