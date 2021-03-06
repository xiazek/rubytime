class Invoice
  include DataMapper::Resource

  property :id,          Serial
  property :name,        String, :nullable => false, :unique => true, :index => true
  property :notes,       Text
  property :user_id,     Integer, :nullable => false, :index => true
  property :client_id,   Integer, :nullable => false, :index => true
  property :issued_at,   DateTime, :default => nil
  property :created_at,  DateTime
 
  belongs_to :client
  belongs_to :user
  has n, :activities
  
  before :destroy do
    throw :halt if issued?
    self.activities.update!(:invoice_id => nil)
  end
  
  def self.pending
    all(:issued_at => nil)
  end
  
  def self.issued
    all(:issued_at.not => nil)
  end
  
  def issued?
    !self.issued_at.nil?
  end
end
