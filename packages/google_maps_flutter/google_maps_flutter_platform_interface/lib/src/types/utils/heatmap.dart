import '../types.dart';

Map<HeatmapId, Heatmap> keyByHeatmapId(Iterable<Heatmap> heatmaps) {
  if (heatmaps == null) {
    return <HeatmapId, Heatmap>{};
  }
  return Map<HeatmapId, Heatmap>.fromEntries(heatmaps.map((Heatmap heatmap) =>
      MapEntry<HeatmapId, Heatmap>(heatmap.heatmapId, heatmap.clone())));
}

List<Map<String, dynamic>> serializeHeatmapSet(Set<Heatmap> heatmaps) {
  if (heatmaps == null) {
    return null;
  }
  return heatmaps.map<Map<String, dynamic>>((Heatmap p) => p.toJson()).toList();
}
