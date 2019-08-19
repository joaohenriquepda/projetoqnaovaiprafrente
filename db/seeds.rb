# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# TEST FOR REGISTER USER

# user = Person.new(name: 'david', password: '', password_confirmation: 'nomatch')
# user.save                                                       # => false, password required
# user.password = 'mUc3m00RsqyRe'
# user.save                                                       # => false, confirmation doesn't match
# user.password_confirmation = 'mUc3m00RsqyRe'
# user.save                                                       # => true
# user.recovery_password = "42password"
# user.recovery_password_digest                                   # => "$2a$04$iOfhwahFymCs5weB3BNH/uXkTG65HR.qpW.bNhEjFP3ftli3o5DQC"
# user.save                                                       # => true
# user.authenticate('notright')                                   # => false
# user.authenticate('mUc3m00RsqyRe')                              # => user
# user.authenticate_recovery_password('42password')               # => user
# User.find_by(name: 'david').try(:authenticate, 'notright')      # => false
# User.find_by(name: 'david').try(:authenticate, 'mUc3m00RsqyRe') # => user

# Person.create(name:'Joao henrique', email: 'joao10101@gmail.com', password: 'joao', transaction_password: 'joao')