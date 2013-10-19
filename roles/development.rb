name 'development'
description 'Development machine'

run_list [
  'recipe[apt]',
  'recipe[git]',
  'recipe[locale]',

  'recipe[ruby_build]',
  'recipe[rbenv::user]',
  'recipe[rbenv::vagrant]',

  'recipe[postgresql::server]',
  'recipe[postgresql::libpq]'
]

default_attributes(
    :locale => {
        :lang => 'en_US.UTF-8',
        :language => 'en_US.UTF-8',
        :lc_all => 'en_US.UTF-8'
    },
    :rbenv => {
        :user_installs => [
            {
                :user => 'vagrant',
                :rubies => ['2.0.0-p247'],
                :global => '2.0.0-p247',
                :gems => {
                    '2.0.0-p247' => [
                        { :name => 'bundler' }
                    ]
                }
            }
        ]
    },
    :postgresql => {
        :users => [
            {
                :username => "vagrant",
                :password => "vagrant",
                :superuser => true,
                :createdb => true,
                :login => true
            }
        ]
    }
)
