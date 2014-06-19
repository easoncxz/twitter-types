{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE OverloadedStrings #-}

module Fixtures where

import Data.Aeson
import Data.Attoparsec
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import Data.Maybe (fromJust)
import Text.Shakespeare.Text

fj :: T.Text -> Value
fj = fromJust . maybeResult . parse json . T.encodeUtf8

errorMsgJson :: Value
errorMsgJson = fj [st|{"request":"\/1\/statuses\/user_timeline.json","error":"Not authorized"}|]

statusJson :: Value
statusJson = fj [st|{"created_at":"Sat Sep 10 22:23:38 +0000 2011","id":112652479837110273,"id_str":"112652479837110273","text":"@twitter meets @seepicturely at #tcdisrupt cc.@boscomonkey @episod http:\/\/t.co\/6J2EgYM","source":"\u003ca href=\"http:\/\/instagr.am\" rel=\"nofollow\"\u003eInstagram\u003c\/a\u003e","truncated":false,"in_reply_to_status_id":null,"in_reply_to_status_id_str":null,"in_reply_to_user_id":783214,"in_reply_to_user_id_str":"783214","in_reply_to_screen_name":"twitter","user":{"id":299862462,"id_str":"299862462","name":"Eoin McMillan ","screen_name":"imeoin","location":"Twitter","description":"Eoin's photography account. See @mceoin for tweets.","url":"http:\/\/www.eoin.me","protected":false,"followers_count":6,"friends_count":0,"listed_count":0,"created_at":"Mon May 16 20:07:59 +0000 2011","favourites_count":0,"utc_offset":null,"time_zone":null,"geo_enabled":false,"verified":false,"statuses_count":277,"lang":"en","contributors_enabled":false,"is_translator":false,"profile_background_color":"131516","profile_background_image_url":"http:\/\/a0.twimg.com\/images\/themes\/theme14\/bg.gif","profile_background_image_url_https":"https:\/\/si0.twimg.com\/images\/themes\/theme14\/bg.gif","profile_background_tile":true,"profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/1380912173\/Screen_shot_2011-06-03_at_7.35.36_PM_normal.png","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/1380912173\/Screen_shot_2011-06-03_at_7.35.36_PM_normal.png","profile_link_color":"009999","profile_sidebar_border_color":"EEEEEE","profile_sidebar_fill_color":"EFEFEF","profile_text_color":"333333","profile_use_background_image":true,"show_all_inline_media":false,"default_profile":false,"default_profile_image":false,"following":null,"follow_request_sent":null,"notifications":null},"geo":null,"coordinates":null,"place":null,"contributors":null,"retweet_count":0,"favorited":false,"retweeted":false,"possibly_sensitive":false}|]

statusEntityJson :: Value
statusEntityJson = fj [st|{"created_at":"Sat Sep 10 22:23:38 +0000 2011","id":112652479837110273,"id_str":"112652479837110273","text":"@twitter meets @seepicturely at #tcdisrupt cc.@boscomonkey @episod http:\/\/t.co\/6J2EgYM","source":"\u003ca href=\"http:\/\/instagr.am\" rel=\"nofollow\"\u003eInstagram\u003c\/a\u003e","truncated":false,"in_reply_to_status_id":null,"in_reply_to_status_id_str":null,"in_reply_to_user_id":783214,"in_reply_to_user_id_str":"783214","in_reply_to_screen_name":"twitter","user":{"id":299862462,"id_str":"299862462","name":"Eoin McMillan ","screen_name":"imeoin","location":"Twitter","description":"Eoin's photography account. See @mceoin for tweets.","url":"http:\/\/www.eoin.me","protected":false,"followers_count":6,"friends_count":0,"listed_count":0,"created_at":"Mon May 16 20:07:59 +0000 2011","favourites_count":0,"utc_offset":null,"time_zone":null,"geo_enabled":false,"verified":false,"statuses_count":277,"lang":"en","contributors_enabled":false,"is_translator":false,"profile_background_color":"131516","profile_background_image_url":"http:\/\/a0.twimg.com\/images\/themes\/theme14\/bg.gif","profile_background_image_url_https":"https:\/\/si0.twimg.com\/images\/themes\/theme14\/bg.gif","profile_background_tile":true,"profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/1380912173\/Screen_shot_2011-06-03_at_7.35.36_PM_normal.png","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/1380912173\/Screen_shot_2011-06-03_at_7.35.36_PM_normal.png","profile_link_color":"009999","profile_sidebar_border_color":"EEEEEE","profile_sidebar_fill_color":"EFEFEF","profile_text_color":"333333","profile_use_background_image":true,"show_all_inline_media":false,"default_profile":false,"default_profile_image":false,"following":null,"follow_request_sent":null,"notifications":null},"geo":null,"coordinates":null,"place":null,"contributors":null,"retweet_count":0,"entities":{"hashtags":[{"text":"tcdisrupt","indices":[32,42]}],"urls":[{"url":"http:\/\/t.co\/6J2EgYM","expanded_url":"http:\/\/instagr.am\/p\/MuW67\/","display_url":"instagr.am\/p\/MuW67\/","indices":[67,86]}],"user_mentions":[{"screen_name":"twitter","name":"Twitter","id":783214,"id_str":"783214","indices":[0,8]},{"screen_name":"boscomonkey","name":"Bosco So","id":14792670,"id_str":"14792670","indices":[46,58]},{"screen_name":"episod","name":"Taylor Singletary","id":819797,"id_str":"819797","indices":[59,66]}]},"favorited":false,"retweeted":false,"possibly_sensitive":false}|]

mediaEntityJson :: Value
mediaEntityJson = fj [st|{"created_at":"Wed Sep 14 20:58:04 +0000 2011","id":114080493036773378,"id_str":"114080493036773378","text":"Hello America! http:\/\/t.co\/rJC5Pxsu","source":"web","truncated":false,"in_reply_to_status_id":null,"in_reply_to_status_id_str":null,"in_reply_to_user_id":null,"in_reply_to_user_id_str":null,"in_reply_to_screen_name":null,"user":{"id":373487136,"id_str":"373487136","name":"Y U No @rno?","screen_name":"yunorno","location":"Paris, France","url":"http:\/\/twitter.com\/rno","description":"Oui oui!","protected":false,"followers_count":32,"friends_count":3,"listed_count":2,"created_at":"Wed Sep 14 17:24:54 +0000 2011","favourites_count":0,"utc_offset":null,"time_zone":null,"geo_enabled":false,"verified":false,"statuses_count":27,"lang":"en","contributors_enabled":false,"is_translator":false,"profile_background_color":"C0DEED","profile_background_image_url":"http:\/\/a0.twimg.com\/images\/themes\/theme1\/bg.png","profile_background_image_url_https":"https:\/\/si0.twimg.com\/images\/themes\/theme1\/bg.png","profile_background_tile":false,"profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/1542800106\/oui_normal.png","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/1542800106\/oui_normal.png","profile_link_color":"0084B4","profile_sidebar_border_color":"C0DEED","profile_sidebar_fill_color":"DDEEF6","profile_text_color":"333333","profile_use_background_image":true,"default_profile":true,"default_profile_image":false,"following":false,"follow_request_sent":false,"notifications":false},"geo":null,"coordinates":null,"place":null,"contributors":null,"retweet_count":4,"entities":{"hashtags":[],"urls":[],"user_mentions":[],"media":[{"id":114080493040967680,"id_str":"114080493040967680","indices":[15,35],"media_url":"http:\/\/pbs.twimg.com\/media\/AZVLmp-CIAAbkyy.jpg","media_url_https":"https:\/\/pbs.twimg.com\/media\/AZVLmp-CIAAbkyy.jpg","url":"http:\/\/t.co\/rJC5Pxsu","display_url":"pic.twitter.com\/rJC5Pxsu","expanded_url":"http:\/\/twitter.com\/yunorno\/status\/114080493036773378\/photo\/1","type":"photo","sizes":{"large":{"w":226,"h":238,"resize":"fit"},"thumb":{"w":150,"h":150,"resize":"crop"},"medium":{"w":226,"h":238,"resize":"fit"},"small":{"w":226,"h":238,"resize":"fit"}}}]},"favorited":false,"retweeted":false,"possibly_sensitive":false}|]

mediaExtendedEntityJson :: Value
mediaExtendedEntityJson = fj [st|{"in_reply_to_status_id":null,"id_str":"479666034073296896","truncated":false,"possibly_sensitive":false,"in_reply_to_screen_name":null,"extended_entities":{"media":[{"id_str":"479665892922376192","expanded_url":"http://twitter.com/thimura_test/status/479666034073296896/photo/1","url":"http://t.co/qOjPwmgLKO","media_url_https":"https://pbs.twimg.com/media/BqgdlpaCQAA5OSu.jpg","indices":[36,58],"id":479665892922376192,"media_url":"http://pbs.twimg.com/media/BqgdlpaCQAA5OSu.jpg","type":"photo","sizes":{"small":{"w":340,"resize":"fit","h":604},"large":{"w":576,"resize":"fit","h":1024},"medium":{"w":576,"resize":"fit","h":1024},"thumb":{"w":150,"resize":"crop","h":150}},"display_url":"pic.twitter.com/qOjPwmgLKO"},{"id_str":"479665897150234624","expanded_url":"http://twitter.com/thimura_test/status/479666034073296896/photo/1","url":"http://t.co/qOjPwmgLKO","media_url_https":"https://pbs.twimg.com/media/Bqgdl5KCQAA9g9V.jpg","indices":[36,58],"id":479665897150234624,"media_url":"http://pbs.twimg.com/media/Bqgdl5KCQAA9g9V.jpg","type":"photo","sizes":{"small":{"w":339,"resize":"fit","h":191},"large":{"w":1024,"resize":"fit","h":576},"medium":{"w":599,"resize":"fit","h":337},"thumb":{"w":150,"resize":"crop","h":150}},"display_url":"pic.twitter.com/qOjPwmgLKO"},{"id_str":"479665901545852929","expanded_url":"http://twitter.com/thimura_test/status/479666034073296896/photo/1","url":"http://t.co/qOjPwmgLKO","media_url_https":"https://pbs.twimg.com/media/BqgdmJiCEAEp0EI.jpg","indices":[36,58],"id":479665901545852929,"media_url":"http://pbs.twimg.com/media/BqgdmJiCEAEp0EI.jpg","type":"photo","sizes":{"small":{"w":339,"resize":"fit","h":225},"large":{"w":1024,"resize":"fit","h":678},"medium":{"w":599,"resize":"fit","h":397},"thumb":{"w":150,"resize":"crop","h":150}},"display_url":"pic.twitter.com/qOjPwmgLKO"},{"id_str":"479665905375256576","expanded_url":"http://twitter.com/thimura_test/status/479666034073296896/photo/1","url":"http://t.co/qOjPwmgLKO","media_url_https":"https://pbs.twimg.com/media/BqgdmXzCIAAa2lU.jpg","indices":[36,58],"id":479665905375256576,"media_url":"http://pbs.twimg.com/media/BqgdmXzCIAAa2lU.jpg","type":"photo","sizes":{"small":{"w":339,"resize":"fit","h":225},"large":{"w":1024,"resize":"fit","h":678},"medium":{"w":599,"resize":"fit","h":397},"thumb":{"w":150,"resize":"crop","h":150}},"display_url":"pic.twitter.com/qOjPwmgLKO"}]},"entities":{"symbols":[],"urls":[],"media":[{"id_str":"479665892922376192","expanded_url":"http://twitter.com/thimura_test/status/479666034073296896/photo/1","url":"http://t.co/qOjPwmgLKO","media_url_https":"https://pbs.twimg.com/media/BqgdlpaCQAA5OSu.jpg","indices":[36,58],"id":479665892922376192,"media_url":"http://pbs.twimg.com/media/BqgdlpaCQAA5OSu.jpg","type":"photo","sizes":{"small":{"w":340,"resize":"fit","h":604},"large":{"w":576,"resize":"fit","h":1024},"medium":{"w":576,"resize":"fit","h":1024},"thumb":{"w":150,"resize":"crop","h":150}},"display_url":"pic.twitter.com/qOjPwmgLKO"}],"user_mentions":[],"hashtags":[{"text":"testnyan","indices":[26,35]}]},"text":"multiple image tweet test #testnyan http://t.co/qOjPwmgLKO","in_reply_to_user_id_str":null,"favorited":false,"coordinates":null,"retweeted":false,"user":{"screen_name":"thimura_test","is_translation_enabled":false,"default_profile":true,"profile_image_url":"http://abs.twimg.com/sticky/default_profile_images/default_profile_6_normal.png","default_profile_image":true,"id_str":"2418883074","profile_background_image_url_https":"https://abs.twimg.com/images/themes/theme1/bg.png","protected":false,"location":"","entities":{"description":{"urls":[]}},"profile_background_color":"C0DEED","utc_offset":null,"url":null,"profile_text_color":"333333","profile_image_url_https":"https://abs.twimg.com/sticky/default_profile_images/default_profile_6_normal.png","verified":false,"statuses_count":5,"profile_background_tile":false,"following":false,"lang":"ja","follow_request_sent":false,"profile_sidebar_fill_color":"DDEEF6","time_zone":null,"name":"thimura test","profile_sidebar_border_color":"C0DEED","geo_enabled":false,"listed_count":0,"contributors_enabled":false,"created_at":"Sun Mar 30 11:47:17 +0000 2014","id":2418883074,"friends_count":2,"is_translator":false,"favourites_count":0,"notifications":false,"profile_background_image_url":"http://abs.twimg.com/images/themes/theme1/bg.png","profile_use_background_image":true,"description":"","profile_link_color":"0084B4","followers_count":2},"lang":"et","retweet_count":0,"in_reply_to_user_id":null,"created_at":"Thu Jun 19 16:44:28 +0000 2014","source":"\u003ca href=\"https://twitter.com/thimura\" rel=\"nofollow\"\u003e二階堂真紅\u003c/a\u003e","geo":null,"id":479666034073296896,"in_reply_to_status_id_str":null,"favorite_count":0,"contributors":null,"place":null}|]
