{"filter":false,"title":"oragetree_spec.rb","tooltip":"/OrangeTree/spec/oragetree_spec.rb","undoManager":{"mark":100,"position":100,"stack":[[{"group":"doc","deltas":[{"start":{"row":40,"column":58},"end":{"row":40,"column":59},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":40,"column":59},"end":{"row":40,"column":60},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":37},"end":{"row":40,"column":84},"action":"remove","lines":["","                        print \"Creciendo\\nProducidas #{@tree.produccion} naranjas\\n\""]}]}],[{"group":"doc","deltas":[{"start":{"row":33,"column":0},"end":{"row":71,"column":0},"action":"remove","lines":[" describe \"Test\" do","        it \"Hace algo\" do","","            crecer = Thread.new do","                loop do","                    if @tree.get_edad <= 10","                        @tree.uno_mas","                        sleep(1)","                        if(@tree.get_edad > 2)","                            @mutex.lock","                            @recurso.signal","                            @mutex.unlock","                        end","                    else","                        break","                    end","                end","            end","","            recolectar = Thread.new do","                loop do","                    @mutex.lock","                    @recurso.wait(@mutex)","                    while @tree.get_naranjas > 0","                        puts @tree.recolectar_una","                    end","                    if (@tree.get_naranjas== 0) && (@tree.get_edad >= 20)","                        break","                    end","                    @mutex.unlock","                end","            end","","            crecer.join","            recolectar.join","            @tree.get_naranjas.should eq(0)","        end","    end",""]}]}],[{"group":"doc","deltas":[{"start":{"row":33,"column":0},"end":{"row":71,"column":0},"action":"insert","lines":[" describe \"Test\" do","        it \"Hace algo\" do","","            crecer = Thread.new do","                loop do","                    if @tree.get_edad <= 10","                        @tree.uno_mas","                        sleep(1)","                        if(@tree.get_edad > 2)","                            @mutex.lock","                            @recurso.signal","                            @mutex.unlock","                        end","                    else","                        break","                    end","                end","            end","","            recolectar = Thread.new do","                loop do","                    @mutex.lock","                    @recurso.wait(@mutex)","                    while @tree.get_naranjas > 0","                        puts @tree.recolectar_una","                    end","                    if (@tree.get_naranjas== 0) && (@tree.get_edad >= 20)","                        break","                    end","                    @mutex.unlock","                end","            end","","            crecer.join","            recolectar.join","            @tree.get_naranjas.should eq(0)","        end","    end",""]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":30},"end":{"row":39,"column":37},"action":"remove","lines":["uno_mas"]},{"start":{"row":39,"column":30},"end":{"row":39,"column":31},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":31},"end":{"row":39,"column":32},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":32},"end":{"row":39,"column":33},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":33},"end":{"row":39,"column":34},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":34},"end":{"row":39,"column":35},"action":"insert","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":30},"end":{"row":39,"column":35},"action":"remove","lines":["time_"]},{"start":{"row":39,"column":30},"end":{"row":39,"column":41},"action":"insert","lines":["time_passes"]}]}],[{"group":"doc","deltas":[{"start":{"row":57,"column":35},"end":{"row":57,"column":49},"action":"remove","lines":["recolectar_una"]},{"start":{"row":57,"column":35},"end":{"row":57,"column":36},"action":"insert","lines":["p"]}]}],[{"group":"doc","deltas":[{"start":{"row":57,"column":36},"end":{"row":57,"column":37},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":57,"column":37},"end":{"row":57,"column":38},"action":"insert","lines":["c"]}]}],[{"group":"doc","deltas":[{"start":{"row":57,"column":38},"end":{"row":57,"column":39},"action":"insert","lines":["k"]}]}],[{"group":"doc","deltas":[{"start":{"row":57,"column":39},"end":{"row":57,"column":40},"action":"insert","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":57,"column":35},"end":{"row":57,"column":40},"action":"remove","lines":["pick_"]},{"start":{"row":57,"column":35},"end":{"row":57,"column":43},"action":"insert","lines":["pick_one"]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":12},"end":{"row":66,"column":18},"action":"remove","lines":["crecer"]},{"start":{"row":66,"column":12},"end":{"row":66,"column":13},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":13},"end":{"row":66,"column":14},"action":"insert","lines":["1"]}]}],[{"group":"doc","deltas":[{"start":{"row":67,"column":12},"end":{"row":67,"column":22},"action":"remove","lines":["recolectar"]},{"start":{"row":67,"column":12},"end":{"row":67,"column":13},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":67,"column":13},"end":{"row":67,"column":14},"action":"insert","lines":["2"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":29},"end":{"row":68,"column":30},"action":"remove","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":28},"end":{"row":68,"column":29},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":27},"end":{"row":68,"column":28},"action":"remove","lines":["j"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":26},"end":{"row":68,"column":27},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":25},"end":{"row":68,"column":26},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":24},"end":{"row":68,"column":25},"action":"remove","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":23},"end":{"row":68,"column":24},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":22},"end":{"row":68,"column":23},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":22},"end":{"row":68,"column":23},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":23},"end":{"row":68,"column":24},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":24},"end":{"row":68,"column":25},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":25},"end":{"row":68,"column":26},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":26},"end":{"row":68,"column":27},"action":"insert","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":27},"end":{"row":68,"column":28},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":28},"end":{"row":68,"column":29},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":30},"end":{"row":59,"column":42},"action":"remove","lines":["get_naranjas"]},{"start":{"row":59,"column":30},"end":{"row":59,"column":41},"action":"insert","lines":["get_oranges"]}]}],[{"group":"doc","deltas":[{"start":{"row":56,"column":32},"end":{"row":56,"column":44},"action":"remove","lines":["get_naranjas"]},{"start":{"row":56,"column":32},"end":{"row":56,"column":43},"action":"insert","lines":["get_oranges"]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":12},"end":{"row":66,"column":14},"action":"remove","lines":["t1"]},{"start":{"row":66,"column":12},"end":{"row":66,"column":13},"action":"insert","lines":["c"]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":13},"end":{"row":66,"column":14},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":14},"end":{"row":66,"column":15},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":15},"end":{"row":66,"column":16},"action":"insert","lines":["c"]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":16},"end":{"row":66,"column":17},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":17},"end":{"row":66,"column":18},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":67,"column":13},"end":{"row":67,"column":14},"action":"remove","lines":["2"]}]}],[{"group":"doc","deltas":[{"start":{"row":67,"column":12},"end":{"row":67,"column":13},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":67,"column":12},"end":{"row":67,"column":13},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":67,"column":13},"end":{"row":67,"column":14},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":67,"column":14},"end":{"row":67,"column":15},"action":"insert","lines":["c"]}]}],[{"group":"doc","deltas":[{"start":{"row":67,"column":12},"end":{"row":67,"column":15},"action":"remove","lines":["rec"]},{"start":{"row":67,"column":12},"end":{"row":67,"column":22},"action":"insert","lines":["recolectar"]}]}],[{"group":"doc","deltas":[{"start":{"row":38,"column":32},"end":{"row":38,"column":33},"action":"remove","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":38,"column":31},"end":{"row":38,"column":32},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":38,"column":30},"end":{"row":38,"column":31},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":38,"column":29},"end":{"row":38,"column":30},"action":"remove","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":36},"end":{"row":41,"column":37},"action":"remove","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":35},"end":{"row":41,"column":36},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":34},"end":{"row":41,"column":35},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":33},"end":{"row":41,"column":34},"action":"remove","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":56,"column":35},"end":{"row":56,"column":36},"action":"remove","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":56,"column":34},"end":{"row":56,"column":35},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":56,"column":33},"end":{"row":56,"column":34},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":56,"column":32},"end":{"row":56,"column":33},"action":"remove","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":33},"end":{"row":59,"column":34},"action":"remove","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":32},"end":{"row":59,"column":33},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":31},"end":{"row":59,"column":32},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":30},"end":{"row":59,"column":31},"action":"remove","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":56},"end":{"row":59,"column":57},"action":"remove","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":55},"end":{"row":59,"column":56},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":54},"end":{"row":59,"column":55},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":53},"end":{"row":59,"column":54},"action":"remove","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":38,"column":29},"end":{"row":38,"column":33},"action":"remove","lines":["edad"]},{"start":{"row":38,"column":29},"end":{"row":38,"column":32},"action":"insert","lines":["age"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":33},"end":{"row":41,"column":37},"action":"remove","lines":["edad"]},{"start":{"row":41,"column":33},"end":{"row":41,"column":36},"action":"insert","lines":["age"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":53},"end":{"row":59,"column":57},"action":"remove","lines":["edad"]},{"start":{"row":59,"column":53},"end":{"row":59,"column":56},"action":"insert","lines":["age"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":21},"end":{"row":68,"column":22},"action":"remove","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":20},"end":{"row":68,"column":21},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":19},"end":{"row":68,"column":20},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":18},"end":{"row":68,"column":19},"action":"remove","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":61},"end":{"row":59,"column":62},"action":"remove","lines":["0"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":60},"end":{"row":59,"column":61},"action":"remove","lines":["2"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":60},"end":{"row":59,"column":61},"action":"insert","lines":["1"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":61},"end":{"row":59,"column":62},"action":"insert","lines":["0"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":38},"end":{"row":41,"column":39},"action":"insert","lines":["="]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":41},"end":{"row":41,"column":42},"action":"remove","lines":[")"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":26},"end":{"row":41,"column":27},"action":"remove","lines":["("]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":26},"end":{"row":41,"column":27},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":38},"end":{"row":41,"column":39},"action":"remove","lines":["="]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":39},"end":{"row":41,"column":40},"action":"remove","lines":["2"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":39},"end":{"row":41,"column":40},"action":"insert","lines":["3"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":33},"end":{"row":41,"column":34},"action":"insert","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":34},"end":{"row":41,"column":35},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":35},"end":{"row":41,"column":36},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":36},"end":{"row":41,"column":37},"action":"insert","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":36},"end":{"row":41,"column":37},"action":"remove","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":35},"end":{"row":41,"column":36},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":34},"end":{"row":41,"column":35},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":33},"end":{"row":41,"column":34},"action":"remove","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":39},"end":{"row":41,"column":40},"action":"remove","lines":["3"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":39},"end":{"row":41,"column":40},"action":"insert","lines":["1"]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":24},"end":{"row":41,"column":25},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":45,"column":24},"end":{"row":45,"column":25},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":33,"column":1},"end":{"row":70,"column":7},"action":"remove","lines":["describe \"Test\" do","        it \"Hace algo\" do","","            crecer = Thread.new do","                loop do","                    if @tree.age <= 10","                        @tree.time_passes","                        sleep(1)","                        #if @tree.age > 1","                            @mutex.lock","                            @recurso.signal","                            @mutex.unlock","                        #end","                    else","                        break","                    end","                end","            end","","            recolectar = Thread.new do","                loop do","                    @mutex.lock","                    @recurso.wait(@mutex)","                    while @tree.oranges > 0","                        puts @tree.pick_one","                    end","                    if (@tree.oranges== 0) && (@tree.age >= 10)","                        break","                    end","                    @mutex.unlock","                end","            end","","            crecer.join","            recolectar.join","            @tree.oranges.should eq(0)","        end","    end"]}]}]]},"ace":{"folds":[],"scrolltop":78.5,"scrollleft":0,"selection":{"start":{"row":34,"column":0},"end":{"row":34,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1418993262957,"hash":"7c023cf813792222f492e4dda4b88f3a48eb460e"}