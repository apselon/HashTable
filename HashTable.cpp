#pragma once

#include "List.cpp"

namespace HashTable{

	template <typename T1, typename T2>
	class Pair_t {
		T1 first;
		T2 second;
		Pair_t(T1 first, T2 second): first(first), second(second) {};
	};

	template <typename key_t, typename val_t, typename Hash_f, unsigned long size>
	class HashTable_t {
	private:

		List::List_t<Pair_t<key_t, val_t>>* table = new List::List_t<Pair_t<key_t, val_t>>[size]();
		Hash_f hash = {};

	public:
		HashTable_t(Hash_f hash): hash(hash) {};
		
		unsigned long insert(key_t key, val_t val){

			auto h = hash(key);
			table[h].push_back(Pair_t<key_t, val_t>(key, val));

			return h;
		}

		unsigned long insert(Pair_t<key_t, val_t> pair){
			return insert(pair.first, pair.second);
		}
		
		val_t find(key_t key){

			auto h = hash(key);
			auto cur = table[h].head();

			while (cur != nullptr){
				if (cur.key.first == key) return cur.key.second;
				cur = cur.next();
			}
			
			return {};
		}


	};
};
