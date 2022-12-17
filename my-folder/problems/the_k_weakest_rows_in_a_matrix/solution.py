class Solution:
    def kWeakestRows(self, mat: List[List[int]], k: int) -> List[int]:
        soldiers =[]
        for row in mat:
            soldiers.append(sum(row))
        return sorted(range(len(soldiers)), key=lambda k: soldiers[k])[:k]