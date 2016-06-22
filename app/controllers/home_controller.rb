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
      url: ""
    }

    libraries << {
      name: "DCManage",
      customer: "Orosimo software",
      url: ""
    }

    libraries << {
      name: "Elgeka.dll",
      customer: "Elgeka - Ferfelis Romania",
      url: ""
    }
  end
end
