import '../lib/domain_review.dart';

void main() {
  const item = DomainReview(47, 51, 30, 78);
  assert(DomainReviewLens.score(item) == 133);
  assert(DomainReviewLens.lane(item) == 'watch');
}
