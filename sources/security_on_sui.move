module 0x0::xyz {
    public struct Person(vector<std::string::String>) has drop;

    fun create_person(): Person {
        let mut x: vector<String> = vector::empty<std::string::String>();
        vector::push_back(&mut x, b"ok".to_string());
        Person{
            list: x
        }
    }
}

module 0x0::ijk {
    fun main(i:&mut 0x0::xyz::Person) {
        vector::push_back(v: &mut i.list, e: b"stop that".to_string())
    }
}



module 0x0::admin_cap {
    public struct AdminCap has key{
        id: UID,
        I 

    }

    fun x(_: &AdminCap) {
        
    }

    fun use_assert(){
        assert!(true, 0)
    }
}

module 0x0::pub_a{
    public fun x(){}
}

module 0x0::pub_b{
    public fun y(){
        
    }
}

module 0x0::access_mod{
    fun z(){
        0x0::pub_a::x();
    }
}