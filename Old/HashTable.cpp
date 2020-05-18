#pragma once

#include "List.cpp"

namespace HashTableNS {

	template <typename T1, typename T2>
	struct Pair_t {
		T1 first;
		T2 second;
		Pair_t(T1 first, T2 second): first(first), second(second) {};
	};

	template <typename key_t, typename val_t, unsigned long (*hash)(key_t), int (*cmp)(key_t, key_t), unsigned long max_size = 257>
	class HashTable {
	public:

		ListNS::List<Pair_t<key_t, val_t>>* table = new ListNS::List<Pair_t<key_t, val_t>>[max_size];

	public:
		HashTable() = default;

		unsigned long insert(key_t key, val_t val){

			unsigned long h = hash(key) % max_size;
			table[h].push_back(Pair_t<key_t, val_t>(key, val));

			return h;
		}

		unsigned long insert(Pair_t<key_t, val_t> pair){
			return insert(pair.first, pair.second);
		}
		
		typename ListNS::List<Pair_t<key_t, val_t>>::Node_t* find(key_t key){

			unsigned long h = hash(key) % max_size;
			auto cur = table[h].head();
			

			while (cur != nullptr){
				if (cmp(cur->key.first, key) == 0){
					return cur;
				}

				cur = cur->next();
			}
			
			printf("%s: not found\n", key);
			return nullptr;
		}

	};
};
