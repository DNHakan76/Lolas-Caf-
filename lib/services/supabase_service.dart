import 'package:supabase/supabase.dart';

class SupabaseService {
  final SupabaseClient client;

  SupabaseService(String url, String anonKey)
      : client = SupabaseClient(url, anonKey);

  Future<List<Member>> getMembers() async {
    final response = await client
        .from('members')
        .select()
        .execute();

    if (response.error != null) {
      throw Exception('Failed to load members: ${response.error!.message}');
    }

    final List<dynamic> data = response.data;
    return data.map((json) => Member.fromJson(json)).toList();
  }
}

class Member {
  final String id;
  final String name;

  Member({required this.id, required this.name});

  factory Member.fromJson(Map<String, dynamic> json) {
    return Member(
      id: json['id'],
      name: json['name'],
    );
  }
}