import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healtpoint/report/provider/report_provider.dart';

final healthPointProvider = Provider<double>((ref) {
  final report = ref.watch(reportsProvider);
  double progress = -1;
  final restReport = report.restReport?.map(
    mood: (mood) => null,
    rest: (rest) => rest,
  );
  if (restReport != null) {
    progress = 0;
    double total = restReport.recoverPercent.toDouble();
    for (var element in report.moodReports) {
      final moodReport = element.map(
        mood: (mood) => mood,
        rest: (rest) => null,
      );
      if (moodReport != null) {
        final effect = moodReport.mood.hpEffect * moodReport.entity.volume;
        total += effect;
        if (total > 100) total = 100;
      }
    }
    progress = total;
  }
  return progress;
});

final shouldShowStatViewProvider = Provider<bool>((ref) {
  final report = ref.watch(reportsProvider);
  final restReport = report.restReport?.map(
    mood: (mood) => null,
    rest: (rest) => rest,
  );
  return restReport != null;
});

final statEffectStrProvider = Provider<double>((ref) {
  final report = ref.watch(reportsProvider);
  double progress = 0.0;
  final restReport =
      report.restReport?.map(mood: (mood) => null, rest: (rest) => rest);
  if (restReport != null) {
    int total = 0;
    for (var element in report.moodReports) {
      final moodReport =
          element.map(mood: (mood) => mood, rest: (rest) => null);
      if (moodReport != null) total += moodReport.mood.strEffect;
    }
    log('total str: $total');
    if (total == 0) {
      progress = 0;
    } else if (total % 3 == 0) {
      if (total > 0) {
        progress = 3;
      } else {
        progress = -3;
      }
    } else {
      if (total > 0) {
        progress = total % 3;
      } else {
        progress = total % 3 * -1;
      }
    }
  }
  log('progress str: $progress');
  return progress;
});

final statEffectChaProvider = Provider<double>((ref) {
  final report = ref.watch(reportsProvider);
  double progress = 0.0;
  final restReport =
      report.restReport?.map(mood: (mood) => null, rest: (rest) => rest);
  if (restReport != null) {
    int total = 0;
    for (var element in report.moodReports) {
      final moodReport =
          element.map(mood: (mood) => mood, rest: (rest) => null);
      if (moodReport != null) total += moodReport.mood.chaEffect;
    }
    if (total == 0) {
      progress = 0;
    } else if (total % 3 == 0) {
      if (total > 0) {
        progress = 3;
      } else {
        progress = -3;
      }
    } else {
      if (total > 0) {
        progress = total % 3;
      } else {
        progress = total % 3 * -1;
      }
    }
  }
  return progress;
});

final statEffectWillProvider = Provider<double>((ref) {
  final report = ref.watch(reportsProvider);
  double progress = 0.0;
  final restReport =
      report.restReport?.map(mood: (mood) => null, rest: (rest) => rest);
  if (restReport != null) {
    int total = 0;
    for (var element in report.moodReports) {
      final moodReport =
          element.map(mood: (mood) => mood, rest: (rest) => null);
      if (moodReport != null) total += moodReport.mood.willEffect;
    }
    if (total == 0) {
      progress = 0;
    } else if (total % 3 == 0) {
      if (total > 0) {
        progress = 3;
      } else {
        progress = -3;
      }
    } else {
      if (total > 0) {
        progress = total % 3;
      } else {
        progress = total % 3 * -1;
      }
    }
  }
  return progress;
});

final statEffectAgiProvider = Provider<double>((ref) {
  final report = ref.watch(reportsProvider);
  double progress = 0.0;
  final restReport =
      report.restReport?.map(mood: (mood) => null, rest: (rest) => rest);
  if (restReport != null) {
    int total = 0;
    for (var element in report.moodReports) {
      final moodReport =
          element.map(mood: (mood) => mood, rest: (rest) => null);
      if (moodReport != null) total += moodReport.mood.agiEffect;
    }
    if (total == 0) {
      progress = 0;
    } else if (total % 3 == 0) {
      if (total > 0) {
        progress = 3;
      } else {
        progress = -3;
      }
    } else {
      if (total > 0) {
        progress = total % 3;
      } else {
        progress = total % 3 * -1;
      }
    }
  }
  return progress;
});

final statEffectIntProvider = Provider<double>((ref) {
  final report = ref.watch(reportsProvider);
  double progress = 0.0;
  final restReport =
      report.restReport?.map(mood: (mood) => null, rest: (rest) => rest);
  if (restReport != null) {
    int total = 0;
    for (var element in report.moodReports) {
      final moodReport =
          element.map(mood: (mood) => mood, rest: (rest) => null);
      if (moodReport != null) total += moodReport.mood.intEffect;
    }
    if (total == 0) {
      progress = 0;
    } else if (total % 3 == 0) {
      if (total > 0) {
        progress = 3;
      } else {
        progress = -3;
      }
    } else {
      if (total > 0) {
        progress = total % 3;
      } else {
        progress = total % 3 * -1;
      }
    }
  }
  return progress;
});
