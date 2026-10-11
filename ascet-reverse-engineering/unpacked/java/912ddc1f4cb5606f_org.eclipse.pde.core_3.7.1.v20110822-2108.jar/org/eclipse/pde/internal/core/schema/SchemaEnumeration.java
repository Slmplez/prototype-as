/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import java.io.PrintWriter;
import org.eclipse.pde.internal.core.ischema.ISchemaEnumeration;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.schema.SchemaObject;

public class SchemaEnumeration
extends SchemaObject
implements ISchemaEnumeration {
    private static final long serialVersionUID = 1L;

    public SchemaEnumeration(ISchemaObject parent, String name) {
        super(parent, name);
    }

    public void write(String indent, PrintWriter writer) {
        writer.println(String.valueOf(indent) + "<enumeration value=\"" + this.getName() + "\">");
        String description = this.getDescription();
        if (description != null) {
            description.trim();
        }
        if (description != null && description.length() > 0) {
            String indent2 = String.valueOf(indent) + "   ";
            String indent3 = String.valueOf(indent2) + "   ";
            writer.println(String.valueOf(indent2) + "<annotation>");
            writer.println(String.valueOf(indent3) + "<documentation>");
            writer.println(String.valueOf(indent3) + description);
            writer.println(String.valueOf(indent3) + "</documentation>");
            writer.println(String.valueOf(indent2) + "</annotation>");
        }
        writer.println(String.valueOf(indent) + "</enumeration>");
    }
}

