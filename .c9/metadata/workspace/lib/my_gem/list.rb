{"filter":false,"title":"list.rb","tooltip":"/lib/my_gem/list.rb","undoManager":{"mark":1,"position":1,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":76,"column":0},"action":"remove","lines":["class List","\tinclude Enumerable","\tattr_accessor :head","\tattr_accessor :tail","","\tNode = Struct.new(:value, :next, :previous)","","\tdef initialize(first_value=nil)","\t\t@head = Node.new(first_value,nil,nil) if first_value","\t\t@tail = @head","\tend","","\tdef pushhead(value)","\t\tif @head","\t\t\tnew_node = Node.new(value,nil,nil)","\t\t\t@head[:next] = new_node","\t\t\tnew_node[:previous] = @head","\t\t\t@head = new_node","\t\telse","\t\t\t@head = Node.new(value,nil,nil)","\t\t\t@tail = @head","\t\tend","\tend","","\tdef pushtail(value)","\t\tif @tail","\t\t\tnew_node = Node.new(value,nil,nil)","\t\t\t@tail[:previous] = new_node","\t\t\tnew_node[:next] = @tail","\t\t\t@tail = new_node","\t\telse","\t\t\t@head = Node.new(value,nil,nil)","\t\t\t@tail = @head","\t\tend","\tend","","\tdef pophead","\t\tif @head","\t\t\tif @head[:previous]==nil","\t\t\t\tsalida = @head[:value]","\t\t\t\t@tail=@head=nil","\t\t\t\treturn salida;","\t\t\telse","\t\t\t\tsalida = @head[:value]","\t\t\t\t@head=@head[:previous]","\t\t\t\treturn salida;","\t\t\tend","\t\telse","\t\t\treturn \"No elements left\"","\t\tend","\tend","","\tdef poptail","\t\tif @tail","\t\t\tif @tail[:next]==nil","\t\t\t\tsalida = @tail[:value]","\t\t\t\t@head=@tail=nil","\t\t\t\treturn salida;","\t\t\telse","\t\t\t\tsalida = @tail[:value]","\t\t\t\t@tail=@tail[:next]","\t\t\t\treturn salida;","\t\t\tend","\t\telse","\t\t\treturn \"No elements left\"","\t\tend","\tend","","\tdef each","\t\taux = @head","\t\twhile aux != nil ","\t\t\tyield aux.value","\t\t\taux = aux.next","\t\tend","\tend","end",""]},{"start":{"row":0,"column":0},"end":{"row":85,"column":3},"action":"insert","lines":["Node = Struct.new(:value, :next, :previous)","","class List","\tinclude Enumerable","\tattr_accessor :head","\tattr_accessor :tail","","\tdef initialize(first_value=nil)","\t\t@head = Node.new(first_value,nil,nil) if first_value","\t\t@tail = @head","\tend","","\tdef pushhead(value)","\t\tif @head","\t\t\tnew_node = Node.new(value,nil,nil)","\t\t\t@head[:next] = new_node","\t\t\tnew_node[:previous] = @head","\t\t\t@head = new_node","\t\telse","\t\t\t@head = Node.new(value,nil,nil)","\t\t\t@tail = @head","\t\tend","\tend","","\tdef pushtail(value)","\t\tif @tail","\t\t\tnew_node = Node.new(value,nil,nil)","\t\t\t@tail[:previous] = new_node","\t\t\tnew_node[:next] = @tail","\t\t\t@tail = new_node","\t\telse","\t\t\t@head = Node.new(value,nil,nil)","\t\t\t@tail = @head","\t\tend","\tend","","\tdef pophead","\t\tif @head","\t\t\tif @head[:previous]==nil","\t\t\t\tsalida = @head[:value]","\t\t\t\t@tail=@head=nil","\t\t\t\treturn salida;","\t\t\telse","\t\t\t\tsalida = @head[:value]","\t\t\t\t@head=@head[:previous]","\t\t\t\treturn salida;","\t\t\tend","\t\telse","\t\t\treturn \"No elements left\"","\t\tend","\tend","","\tdef poptail","\t\tif @tail","\t\t\tif @tail[:next]==nil","\t\t\t\tsalida = @tail[:value]","\t\t\t\t@head=@tail=nil","\t\t\t\treturn salida;","\t\t\telse","\t\t\t\tsalida = @tail[:value]","\t\t\t\t@tail=@tail[:next]","\t\t\t\treturn salida;","\t\t\tend","\t\telse","\t\t\treturn \"No elements left\"","\t\tend","\tend","","\tdef size","\t\taux1=@head.previous","\t\taux2=1","\t\twhile(aux1!=nil)","\t\t\taux1=aux1.previous","\t\t\taux2+=1","\t\tend","\t\treturn aux2","\tend","","\tdef each","\t\taux = @tail","\t\twhile aux != nil","\t\t\tyield aux.value","\t\t\taux = aux.next","\t\tend","\tend","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":85,"column":3},"end":{"row":86,"column":0},"action":"insert","lines":["",""]}]}]]},"ace":{"folds":[],"scrolltop":340,"scrollleft":0,"selection":{"start":{"row":85,"column":3},"end":{"row":85,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1416580336261,"hash":"495ef2bb46e94f347f0a9c3676448dded2347164"}