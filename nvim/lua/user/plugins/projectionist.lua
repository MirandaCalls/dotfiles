vim.g.projectionist_heuristics = {
  artisan = {
    ['*'] = {
      start = 'php artisan serve',
      console = 'php artisan tinker',
    },
    ['app/*.php'] = {
      type = 'source',
      alternate = {
        'tests/PestUnit/{}Test.php',
        'tests/Feature/{}Test.php',
        'tests/unit/{}Cest.php',
        'tests/functional/{}Cest.php',
      },
    },
    ['tests/Feature/*Test.php'] = {
      type = 'test',
      alternate = 'app/{}.php',
    },
    ['tests/PestUnit/*Test.php'] = {
      type = 'test',
      alternate = 'app/{}.php',
    },
    ['tests/functional/*Cest.php'] = {
      type = 'test',
      alternate = 'app/{}.php',
    },
    ['tests/unit/*Cest.php'] = {
      type = 'test',
      alternate = 'app/{}.php',
    },
  },
}
