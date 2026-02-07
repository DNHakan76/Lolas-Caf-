// loyalty_service.dart

class LoyaltyProgram {
  // Define tiers
  static const Map<String, double> tiers = {
    'Bronze': 0.0,
    'Silver': 1000.0,
    'Gold': 2500.0,
    'Platinum': 5000.0,
  };

  double totalSpending;

  LoyaltyProgram(this.totalSpending);

  // Calculate the participant's tier based on their total spending
  String calculateTier() {
    String participantTier = 'Bronze';

    // Determine the tier
    tiers.forEach((key, value) {
      if (totalSpending >= value) {
        participantTier = key;
      }
    });

    return participantTier;
  }

  // Check eligibility for birthday offer
  bool isBirthdayOfferEligible(DateTime birthday) {
    final currentDate = DateTime.utc(2026, 2, 7);
    return birthday.month == currentDate.month && birthday.day == currentDate.day;
  }
}