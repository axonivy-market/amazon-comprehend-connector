package feature;

import java.io.IOException;

import javax.ws.rs.Priorities;
import javax.ws.rs.client.ClientRequestContext;
import javax.ws.rs.client.ClientRequestFilter;
import javax.ws.rs.core.Feature;
import javax.ws.rs.core.FeatureContext;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.server.restricted.EngineMode;

public class AwsHeaderFeature implements Feature {
	public static final String AWS_SESSION_TOKEN = "Amazon.Comprehend.SessionToken";

	public static final String REQUIRED_AWS_SESSION_TOKEN_HEADER_KEY = "X-Amz-Security-Token";

	public static final String REQUIRED_AWS_SESSION_TOKEN_HEADER_VALUE = Ivy.var().get(AWS_SESSION_TOKEN);

	@Override
	public boolean configure(FeatureContext context) {
		if (EngineMode.isEmbeddedInDesigner()) {
			context.register(new AWSComprehendRequestFilter(REQUIRED_AWS_SESSION_TOKEN_HEADER_VALUE), Priorities.HEADER_DECORATOR);
			return true;
		}
		return false;
	}

	private static class AWSComprehendRequestFilter implements ClientRequestFilter {
		private final String headerValue;

		private AWSComprehendRequestFilter(String headerValue) {
			this.headerValue = headerValue;
		}

		@Override
		public void filter(ClientRequestContext context) throws IOException {
			context.getHeaders().add(REQUIRED_AWS_SESSION_TOKEN_HEADER_KEY, headerValue);
		}
	}

}
