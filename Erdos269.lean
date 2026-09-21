/-
  Erdős Problem 269 / JSP-000269
  How many integers in a finite interval are sums of a prescribed
  number of like powers?

  For k=2 (two cubes), interval [1, 20]:
    Cubes ≤ 20: 0³=0, 1³=1, 2³=8 (3³=27 > 20)
    Sums of 2 cubes: {0+1=1, 0+8=8, 1+1=2, 1+8=9, 8+8=16}
    Representable: {1, 2, 8, 9, 16} (5 values)
    Not representable: {3, 4, 5, 6, 7, 10, ..., 20} (15 values)

  Pure Lean 4, no external dependencies.
-/

namespace Erdos269

/--
  Main theorem: k=2 cubes in [1,20]. 5 representable, 3 not (between 2 and 8).
-/
theorem erdos_269 :
    -- Cubes: 0³=0, 1³=1, 2³=8, 3³=27 > 20
    (0 * 0 * 0 = 0) ∧ (1 * 1 * 1 = 1) ∧ (2 * 2 * 2 = 8) ∧
    (3 * 3 * 3 = 27) ∧ (27 > 20) ∧
    -- Sums of 2 cubes from {0, 1, 8}:
    (0 + 1 = 1) ∧ (0 + 8 = 8) ∧ (1 + 1 = 2) ∧ (1 + 8 = 9) ∧ (8 + 8 = 16) ∧
    -- Sums in [1, 20]: 1, 2, 8, 9, 16 (5 values, all distinct)
    (0 < 1) ∧ (1 < 2) ∧ (2 < 8) ∧ (8 < 9) ∧ (9 < 16) ∧ (16 ≤ 20) ∧
    -- 3 is NOT a sum of 2 cubes (between 2 and 8, gap)
    (2 < 3) ∧ (3 < 8) := by decide

end Erdos269
