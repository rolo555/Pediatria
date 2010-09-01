class PatientsController < ApplicationController
  active_scaffold :patient do |conf|
    #Configuración de las columnas que se mostrarán al listar
    conf.list.columns = [:last_name, :first_name]

    #Configuración de las acciones que se mostrarán
    conf.actions = [:create, :search, :update, :delete, :show, :nested, :subform, :list]

    #Configuración de los campos agrupados por categorias
    conf.create.columns.add_subgroup "Personal data" do |personal_data_group|
      personal_data_group.add :first_name, :last_name, :date_of_birth, :origin
    end
    conf.create.columns.add_subgroup "Parents data" do |parents_data_group|
      parents_data_group.add :mother, :father, :address, :phone_number, :contact_emails
    end
    conf.create.columns.add_subgroup "Medical data" do |medical_data_group|
      medical_data_group.add :referenced_by, :observations
    end

    #La fecha se muestra con un calendario
    conf.columns[:date_of_birth].form_ui = :calendar

    #Las observaciones se muestran con un textarea de 10x50
    conf.columns[:observations].form_ui = :textarea
    conf.columns[:observations].options = {:rows => 10, :cols => 50 }
  end
end