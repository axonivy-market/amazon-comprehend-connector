
package feature;

import java.io.IOException;

import javax.ws.rs.Priorities;
import javax.ws.rs.client.ClientRequestContext;
import javax.ws.rs.client.ClientRequestFilter;
import javax.ws.rs.core.Feature;
import javax.ws.rs.core.FeatureContext;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.rest.client.FeatureConfig;
import ch.ivyteam.ivy.server.restricted.EngineMode;

public class AwsHeaderFeature implements Feature {
	public static final String SESSION_TOKEN = "Amazon.Comprehend.SessionToken";

	public static final String REQUIRED_HEADER_KEY = "X-Amz-Security-Token";

	public static final String REQUIRED_HEADER_VALUE = Ivy.var().get(SESSION_TOKEN);

	@Override
	public boolean configure(FeatureContext context) {
		// TODO Auto-generated method stub
		if (EngineMode.isEmbeddedInDesigner()) {
			Ivy.log().info("IN DESIGNER");
//			Ivy.log().info(REQUIRED_HEADER_KEY);
//
//			Ivy.log().info(REQUIRED_HEADER_VALUE);
//
//			context.property(REQUIRED_HEADER_KEY, REQUIRED_HEADER_VALUE);
//
//			Ivy.log().info(context.getConfiguration().getProperty(REQUIRED_HEADER_KEY));
//			context.register(new AWSComprehendRequestFilter(apiKey), Priorities.HEADER_DECORATOR);

//			var config = new FeatureConfig(context.getConfiguration(), AwsHeaderFeature.class);
//			Ivy.log().info();
//			String apiKey = config.readMandatory(REQUIRED_HEADER_KEY);
//			Ivy.log().info(apiKey);
			context.register(new AWSComprehendRequestFilter(REQUIRED_HEADER_VALUE), Priorities.HEADER_DECORATOR);
			Ivy.log().info("IMPLEMENT SUCCESSFULLY");
			return true;
		}
		Ivy.log().info("IMPLEMENT UNSUCCESSFULLY");
		return false;
	}

	private static class AWSComprehendRequestFilter implements ClientRequestFilter {
		private final String headerValue;

		private AWSComprehendRequestFilter(String headerValue) {
			this.headerValue = headerValue;
		}

		@Override
		public void filter(ClientRequestContext context) throws IOException {
			context.getHeaders().add(REQUIRED_HEADER_KEY, headerValue);
		}
	}

}
