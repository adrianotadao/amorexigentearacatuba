User.create(:name => "unip", :email => "unip@unip.com.br", :password => "102030", :password_confirmation => "102030")

Event.create(:active => true, :name => "Festa", :pictures => [EventPicture.new(:title => "Titulo", :data => File.open('spec/images/01.jpg')), EventPicture.new(:title => "Titulo", :data => File.open('spec/images/02.jpg')), EventPicture.new(:title => "Titulo", :data => File.open('spec/images/03.jpg')), EventPicture.new(:title => "Titulo", :data => File.open('spec/images/04.jpg'))])
Event.create(:active => true, :name => "Inauturacao", :pictures => [EventPicture.new(:title => "Titulo", :data => File.open('spec/images/01.jpg')), EventPicture.new(:title => "Titulo", :data => File.open('spec/images/02.jpg')), EventPicture.new(:title => "Titulo", :data => File.open('spec/images/03.jpg')), EventPicture.new(:title => "Titulo", :data => File.open('spec/images/04.jpg'))])

Partner.create(:active => true, :name => "Parceiro1", :url => "www.unip.br", :logo => PartnerPicture.new(:title => "Banner", :data => File.open('spec/images/01.jpg')))
Partner.create(:active => true, :name => "Parceiro2", :url => "www.unip.br", :logo => PartnerPicture.new(:title => "Banner", :data => File.open('spec/images/02.jpg')))

Album.create(:active => true, :name => "Album oleo", :description => "Inauguracao", :pictures => [AlbumPicture.new(:title => "Titulo", :data => File.open('spec/images/01.jpg')), AlbumPicture.new(:title => "Titulo", :data => File.open('spec/images/02.jpg')), AlbumPicture.new(:title => "Titulo", :data => File.open('spec/images/03.jpg')), AlbumPicture.new(:title => "Titulo", :data => File.open('spec/images/04.jpg'))])
Album.create(:active => true, :name => "Album oleo2", :description => "Inauguracao2", :pictures => [AlbumPicture.new(:title => "Titulo", :data => File.open('spec/images/01.jpg')), AlbumPicture.new(:title => "Titulo", :data => File.open('spec/images/02.jpg')), AlbumPicture.new(:title => "Titulo", :data => File.open('spec/images/03.jpg')), AlbumPicture.new(:title => "Titulo", :data => File.open('spec/images/04.jpg'))])

Project.create(:active => true, :name => "projeto1", :body => "aaaaaaaaaa")
Project.create(:active => true, :name => "projeto2", :body => "aaaaaaaaaa")

Institutional.create(:body => "O Amor-Exigente e um programa de auto e mutua ajuda que desenvolve preceitos para a organizacao da familia, que sao praticados por meio dos 12 Principios Basicos e Eticos, da espiritualidade e dos grupos de auto e mutua-ajuda que atraves de seus voluntarios, sensibilizam as pessoas, levando-as a perceberem a necessidade de mudar o rumo de suas vidas e do mundo, a partir de si mesmas. Ha 26 anos, o Amor-Exigente (AE) atua como apoio e orientacao aos familiares de dependentes quimicos. O Programa eficaz estendeu-se tambem ao trabalho com Prevencao , passando a atuar como um movimento de protecao social Amor-Exigente, pois desestimular a experimentacao, o uso ou abuso de tabaco, do alcool e de outras drogas, assim como lutar contra tudo o que torna os jovens vulneraveis, expostos a violencia, ao crime, aos acidentes de transito e a corrupcao em todas as suas formas sao tambem propostas do Amor-Exigente. Atualmente, o movimento conta com 10 mil voluntarios, que realizam, aproximadamente, 100 mil atendimentos mensais por meio de reunioes, cursos e palestras. Sao 536 grupos no Brasil, 2 na Argentina, 1 no Peru e 9 no Uruguai, alem de 350 grupos em fase experimental e 249 Subgrupos de Jovens na Sobriedade.", :principles => "O Amor-Exigente e um programa de auto e mutua ajuda que desenvolve preceitos para a organizacao da familia, que sao praticados por meio dos 12 Principios Basicos e Eticos, da espiritualidade e dos grupos de auto e mutua-ajuda que atraves de seus voluntarios, sensibilizam as pessoas, levando-as a perceberem a necessidade de mudar o rumo de suas vidas e do mundo, a partir de si mesmas. Ha 26 anos, o Amor-Exigente (AE) atua como apoio e orientacao aos familiares de dependentes quimicos. O Programa eficaz estendeu-se tambem ao trabalho com Prevencao , passando a atuar como um movimento de protecao social Amor-Exigente, pois desestimular a experimentacao, o uso ou abuso de tabaco, do alcool e de outras drogas, assim como lutar contra tudo o que torna os jovens vulneraveis, expostos a violencia, ao crime, aos acidentes de transito e a corrupcao em todas as suas formas sao tambem propostas do Amor-Exigente. Atualmente, o movimento conta com 10 mil voluntarios, que realizam, aproximadamente, 100 mil atendimentos mensais por meio de reunioes, cursos e palestras. Sao 536 grupos no Brasil, 2 na Argentina, 1 no Peru e 9 no Uruguai, alem de 350 grupos em fase experimental e 249 Subgrupos de Jovens na Sobriedade.", :contact => "aaaaaaaa", :logo => InstitutionalLogo.new(:title => "Banner", :data => File.open('spec/images/01.jpg')))