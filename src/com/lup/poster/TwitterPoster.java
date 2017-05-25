package com.lup.poster;

import java.io.File;
import java.io.IOException;

import twitter4j.StatusUpdate;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.AccessToken;
import twitter4j.conf.Configuration;
import twitter4j.conf.ConfigurationBuilder;

public class TwitterPoster {

	public static boolean post(String statusMsg, String imgPath) throws IOException, TwitterException {
		// Your Twitter App's Consumer Key
		final String CONSUMER_KEY = "IBi6ocy3RbTvYU8kNbXlVHUUf";
		// Your Twitter App's Consumer Secret
		final String CONSUMER_SECRET = "6wNy2vUasAwaRvntFr4Hupos7BkP5aM43N17daDjCselhCSynx";
		// Your Twitter Access Token
		final String accessToken = "636920434-dU2u0pKSRxQ1UFDaiduW7SA2kRpOtsFxySc8Cvd8";
		// Your Twitter Access Token Secret
		final String accessTokenSecret = "yZirutadZ6Yw5IPWzNcG3l9GoRk6VaKTcPNtOuZKRpPAG";
		ConfigurationBuilder builder = new ConfigurationBuilder();
		builder.setOAuthConsumerKey(CONSUMER_KEY);
		builder.setOAuthConsumerSecret(CONSUMER_SECRET);
		Configuration configuration = builder.build();
		TwitterFactory factory = new TwitterFactory(configuration);
		Twitter twitter = factory.getInstance();
		twitter.setOAuthAccessToken(new AccessToken(accessToken, accessTokenSecret));
		File file = new File(imgPath);
		StatusUpdate status = new StatusUpdate(statusMsg);
		status.setMedia(file);
		twitter.updateStatus(status);
		return true;
	}

}