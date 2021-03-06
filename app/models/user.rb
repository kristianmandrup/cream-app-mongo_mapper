use_roles_strategy :role_string

class User
  devise :database_authenticatable, :confirmable, :recoverable, :rememberable, :trackable, :validatable
  include MongoMapper::Document
  include Roles::MongoMapper 
  strategy :role_string, :default

  valid_roles_are :admin, :guest         

# Validations :::::::::::::::::::::::::::::::::::::::::::::::::::::
# validates_presence_of :attribute

# Assocations :::::::::::::::::::::::::::::::::::::::::::::::::::::
# belongs_to :model
# many :model
# one :model

# Callbacks ::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
# before_create :your_model_method
# after_create :your_model_method
# before_update :your_model_method 

# Attribute options extras ::::::::::::::::::::::::::::::::::::::::
# attr_accessible :first_name, :last_name, :email

# Validations
# key :name, :required =>  true      

# Defaults
# key :done, :default => false

# Typecast
# key :user
  devise :database_authenticatable, :confirmable, :recoverable, :rememberable, :trackable, :validatable_ids, Array, :typecast => 'ObjectId'
  
   
end