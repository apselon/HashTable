#include "List.cpp"

namespace HashTable{

	template <typename Hash_f, unsigned long size>
	class HashTable_t {
	private:
		List::List_t<const char*>* table = new List::List_t<const char*>[size]();
		

		Hash_f hash = {};

	public:
		HashTable_t(Hash_f hash): hash(hash) {};
		
		unsigned long insert(const char* str){
			table[hash(str)].push_back(str);
		};

	};
};
