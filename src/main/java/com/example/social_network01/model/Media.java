package com.example.social_network01.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.persistence.*;
import jakarta.validation.constraints.Past;
import lombok.Data;
import org.springframework.data.annotation.CreatedDate;

import java.time.LocalDateTime;

@Schema(hidden = true)
@Entity
@Data
@Table(name = "media")
public class Media {
    public enum MediaType {
        IMAGE, VIDEO, AUDIO, DOCUMENT, ARCHIVE, OTHER;

        public static MediaType fromMimeType(String mimeType) {
            if (mimeType == null) return OTHER;

            String primaryType = mimeType.split("/")[0];
            return switch (primaryType) {
                case "image" -> IMAGE;
                case "video" -> VIDEO;
                case "audio" -> AUDIO;
                default -> switch (mimeType) {
                    case "application/pdf", "text/plain" -> DOCUMENT;
                    case "application/zip", "application/x-rar-compressed" -> ARCHIVE;
                    default -> OTHER;
                };
            };
        }
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "post_id", nullable = false)
    @JsonBackReference
    private Post post;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 20)
    private MediaType mediaType;

    @Column(nullable = false, length = 100)
    private String mimeType;

    @Column(nullable = false, length = 255)
    private String fileName;

    @Column(nullable = false)
    private Long fileSize;

    @Column(nullable = false)
    @CreatedDate
    private LocalDateTime uploadedWhen;

    @PrePersist
    protected void onCreate() {
        uploadedWhen = LocalDateTime.now();
    }
}
