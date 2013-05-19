class User < ActiveRecord::Base
  attr_accessible :ap_materno, :ap_paterno, :email, :nu_doc_ident, :prenombre, :sexo, :ti_doc_ident, :ti_persona
end
