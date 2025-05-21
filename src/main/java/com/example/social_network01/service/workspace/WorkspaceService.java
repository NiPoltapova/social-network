package com.example.social_network01.service.workspace;

import com.example.social_network01.dto.WorkspaceDTO;

import java.time.Instant;
import java.time.LocalDateTime;
import java.util.List;

public interface WorkspaceService {

    List<WorkspaceDTO> getWorkspaces();
    WorkspaceDTO getWorkspaceById(Long id);
    WorkspaceDTO createWorkspace(WorkspaceDTO workspaceDTO);
    void deleteWorkspaceById(Long id);
    WorkspaceDTO updateWorkspace(WorkspaceDTO workspaceDTO);
    List<WorkspaceDTO> getAvailableWorkspaces();
    List<WorkspaceDTO> getAvailableWorkspaces(Instant start, Instant end);

}
