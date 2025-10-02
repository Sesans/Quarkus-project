package infrastructure.resources;

import api.ElectionApi;
import api.dto.out.ElectionResponse;
import org.jboss.resteasy.reactive.ResponseStatus;
import org.jboss.resteasy.reactive.RestResponse;

import javax.transaction.Transactional;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
@Path("api/elections")
public class ElectionResource {
    private final ElectionApi api;

    public ElectionResource(ElectionApi api) {
        this.api = api;
    }

    @POST
    @Transactional
    @ResponseStatus(RestResponse.StatusCode.CREATED)
    public void submit(){
        api.submit();
    }

    @GET
    public List<ElectionResponse> list(){
        return api.findAll();
    }
}
