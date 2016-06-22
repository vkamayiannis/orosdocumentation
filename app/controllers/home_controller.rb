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
      url: "/docs/AlumilERP/html/Alumil ERP DLL.htm"
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

    libraries << {
      name: "ImportSfa.dll",
      customer: "Elgeka - Ferfelis Romania",
      url: ""
    }

    libraries << {
      name: "Makios.dll",
      customer: "Makios S.A.",
      url: ""
    }

    libraries << {
      name: "MakiosBulgConnection.dll",
      customer: "Makios S.A.",
      url: ""
    }

    libraries << {
      name: "MakiosBulg.dll",
      customer: "Makios S.A.",
      url: ""
    }

    libraries << {
      name: "MakiosFiles.dll",
      customer: "Makios S.A.",
      url: ""
    }

    libraries << {
      name: "ImportXML.dll",
      customer: "Olympos S.A.",
      url: "/docs/Olympos_XML/html/Olympos_XML.htm"
    }
  end
end
