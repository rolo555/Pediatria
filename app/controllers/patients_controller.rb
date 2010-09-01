class PatientsController < ApplicationController
  active_scaffold :patient do |conf|
    #Configuración de las columnas que se mostrarán al listar
    conf.list.columns = [:last_name, :first_name]
    #Configuración de las acciones que se mostrarán
    conf.actions = [:create, :search, :update, :delete, :show, :nested, :subform, :list]
    #Configuración del orden en que se muestran los campos al crear
    #conf.create.columns = [:first_name, :last_name, :date_of_birth, :origin, :mother, :father, :address, :phone_number, :referenced_by, :observations]
    conf.create.columns = [:date_of_birth, :origin, :mother, :father, :address, :phone_number, :referenced_by, :observations]
    #La fecha se muestra con un calendario
    conf.columns[:date_of_birth].form_ui = :calendar
    #Las observaciones se muestran con un textarea de 10x50
      conf.columns[:observations].form_ui = :textarea
      conf.columns[:observations].options = {:rows => 10, :cols => 50 }
  end
end 