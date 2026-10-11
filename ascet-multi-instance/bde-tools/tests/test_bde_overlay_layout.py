"""Recorded text placement only; native visibility requires screenshots."""
import unittest

from bde_overlay_experiment import primitives


class OverlayLayoutTests(unittest.TestCase):
    def sample(self):
        nodes = [
            {'kind': 'node', 'ref': 'n1', 'literal': '731.25', 'position': [400, 300], 'size': [40, 20]},
            {'kind': 'node', 'ref': 'n2', 'operator': '+', 'position': [740, 300], 'size': [30, 50]}]
        edges = [{'kind': 'edge', 'ref': 'e' + str(i), 'source': 'p1', 'target': 'p' + str(i + 1),
                  'type': 2, 'route': [[430, 300], [740, 300 + i * 20]]} for i in (1, 2)]
        return [{'ref': row['ref'], 'before': None, 'after': row} for row in nodes + edges]

    def test_fanout_text_has_distinct_nonoverlapping_positions_and_exact_content(self):
        sample = self.sample()
        output = primitives(sample)
        chunks = [output[i:i + 6] for i in range(0, len(output), 6)]
        labels = [row for row in chunks if row[0] == 'text']
        bounds = [(int(r[2]) - 2, int(r[3]) - 12, int(r[2]) + len(r[4]) * 8 + 2, int(r[3]) + 4) for r in labels]
        for index, a in enumerate(bounds):
            for b in bounds[index + 1:]:
                self.assertFalse(a[0] < b[2] and b[0] < a[2] and a[1] < b[3] and b[1] < a[3])
        self.assertIn('+ e1 p1 -> p2 type=2', output)
        self.assertIn('+ e2 p1 -> p3 type=2', output)
        self.assertEqual(output, primitives(sample))

    def test_label_layout_retains_exact_recorded_routes_and_rectangles(self):
        output = primitives(self.sample())
        chunks = [output[i:i + 6] for i in range(0, len(output), 6)]
        self.assertIn(['line', '32768', '430', '300', '740', '320'], chunks)
        self.assertIn(['line', '32768', '430', '300', '740', '340'], chunks)
        self.assertIn(['rect', '32768', '396', '296', '48', '28'], chunks)


if __name__ == '__main__':
    unittest.main()
