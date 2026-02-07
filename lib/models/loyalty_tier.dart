class LoyaltyTier {
  final String tier;
  final int points;

  LoyaltyTier(this.tier, this.points);

  static const LoyaltyTier bronze = LoyaltyTier('Bronze', 0);
  static const LoyaltyTier silver = LoyaltyTier('Silver', 100);
  static const LoyaltyTier gold = LoyaltyTier('Gold', 200);

  @override
  String toString() {
    return 'LoyaltyTier{tier: $tier, points: $points}';
  }
}