# str=["eat","tea","tan","ate","nat","bat"]
# for i in range(len(str)):
#     str[i]=''.join(sorted(str[i]))
# group={}
# for grp in str:
#     if grp in group:
#         group[grp].append(grp)
#     else:
#         group[grp]=[grp]
# print(list(group.values()))

# =======================
def groupAnagrams(strs):
    groups = {}

    for word in strs:
        key = "".join(sorted(word))

        if key not in groups:
            groups[key] = []

        groups[key].append(word)

    return list(groups.values())
strs = ["eat", "tea", "tan", "ate", "nat", "bat"]
print(groupAnagrams(strs))