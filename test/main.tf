resource "discord_guild" "dsac" {
  name = "Discord as Code"
  region = "us-central"
}

resource "discord_guild_emoji" "test_emoji" {
  guild_id = "${discord_guild.dsac.id}"
  name = "doggo"
  image = "data:image/jpeg;base64,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"
}

resource "discord_guild_role" "admin" {
  guild_id = "${discord_guild.dsac.id}"
  name = "Council"
  hoist = true
  color = 0x4286f4
}

resource "discord_guild_channel" "announcements" {
  guild_id = "${discord_guild.dsac.id}"
  name = "Announcements & Info"
  permission_overwrites = [
    {
      id = "${discord_guild_role.admin.id}"
      type = "role"
      allow = 2048 // Send message perms
    },
    {
      id = "${discord_guild.dsac.id}" // Should be the @everyone role
      type = "role"
      deny = 2048
    }
  ]
  type = 4 // Category
}

resource "discord_guild_channel" "about" {
  guild_id = "${discord_guild.dsac.id}"
  name = "about"
  parent_id = "${discord_guild_channel.announcements.id}"
}

resource "discord_guild_channel" "general_category" {
  guild_id = "${discord_guild.dsac.id}"
  name = "General"
  type = 4 // Category
}

resource "discord_guild_channel" "general" {
  guild_id = "${discord_guild.dsac.id}"
  name = "general"
  parent_id = "${discord_guild_channel.general_category.id}"
}

resource "discord_channel_invite" "test_invite" {
  channel_id = "${discord_guild_channel.about.id}"
  unique = true
  max_users = 0
  max_age = 0
}

output "invite" {
  value = "${discord_channel_invite.test_invite.code}"
}