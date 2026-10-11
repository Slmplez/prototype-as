/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import java.io.PrintWriter;
import org.eclipse.pde.internal.core.ischema.IDocumentSection;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.schema.SchemaObject;

public class DocumentSection
extends SchemaObject
implements IDocumentSection,
Comparable {
    private static final long serialVersionUID = 1L;
    public static final String[] DOC_SECTIONS = new String[]{"since", "examples", "apiinfo", "implementation", "copyright"};
    private String sectionId;

    public DocumentSection(ISchemaObject parent, String sectionId, String name) {
        super(parent, name);
        this.sectionId = sectionId;
    }

    public String getSectionId() {
        return this.sectionId;
    }

    public void write(String indent, PrintWriter writer) {
        String description = this.getWritableDescription();
        if (description == null || description.equals("")) {
            return;
        }
        String indent2 = String.valueOf(indent) + "   ";
        String indent3 = String.valueOf(indent2) + "   ";
        writer.println(String.valueOf(indent) + "<annotation>");
        writer.println(String.valueOf(indent2) + (this.getSchema().getSchemaVersion() >= 3.4 ? "<appinfo>" : "<appInfo>"));
        writer.println(String.valueOf(indent3) + "<meta.section type=\"" + this.sectionId + "\"/>");
        writer.println(String.valueOf(indent2) + (this.getSchema().getSchemaVersion() >= 3.4 ? "</appinfo>" : "</appInfo>"));
        writer.println(String.valueOf(indent2) + "<documentation>");
        writer.println(String.valueOf(indent3) + description);
        writer.println(String.valueOf(indent2) + "</documentation>");
        writer.println(String.valueOf(indent) + "</annotation>");
    }

    public boolean equals(Object obj) {
        return obj instanceof DocumentSection && ((DocumentSection)obj).getSectionId().equalsIgnoreCase(this.sectionId);
    }

    public int compareTo(Object arg0) {
        if (arg0 instanceof DocumentSection) {
            int thisIndex;
            int otherIndex = this.getIndex(((DocumentSection)arg0).getSectionId());
            if (otherIndex == (thisIndex = this.getIndex(this.sectionId))) {
                return 0;
            }
            if (otherIndex == -1) {
                return -1;
            }
            return thisIndex - otherIndex;
        }
        return -1;
    }

    private int getIndex(String sectionId) {
        if (sectionId == null) {
            return -1;
        }
        int i = 0;
        while (i < DOC_SECTIONS.length) {
            if (DOC_SECTIONS[i].equals(sectionId)) {
                return i;
            }
            ++i;
        }
        return -1;
    }
}

