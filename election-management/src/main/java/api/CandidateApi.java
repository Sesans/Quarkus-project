package api;

import api.dto.in.*;
import api.dto.out.CandidateResponseDTO;
import domain.Candidate;
import domain.CandidateService;

import javax.enterprise.context.ApplicationScoped;
import java.util.List;

@ApplicationScoped
public class CandidateApi {
    private final CandidateService service;

    public CandidateApi(CandidateService service) {
        this.service = service;
    }

    public void create(CreateCandidate dto) {
        service.save(dto.toDomain());
    }

    public CandidateResponseDTO update(String id, UpdateCandidate dto){
        service.save(dto.toDomain(id));

        return CandidateResponseDTO.fromDomain(service.findById(id));
    }

    public List<CandidateResponseDTO> list() {
        return service.findAll().stream().map(CandidateResponseDTO::fromDomain).toList();
    }
}
