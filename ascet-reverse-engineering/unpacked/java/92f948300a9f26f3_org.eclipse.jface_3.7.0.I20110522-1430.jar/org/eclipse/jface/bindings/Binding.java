/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ParameterizedCommand
 */
package org.eclipse.jface.bindings;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.StringWriter;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.util.Util;

public abstract class Binding {
    private static final int HASH_CODE_NOT_COMPUTED = -1;
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    public static final int SYSTEM = 0;
    public static final int USER = 1;
    private final ParameterizedCommand command;
    private final String contextId;
    private transient int hashCode = -1;
    private final String locale;
    private final String platform;
    private final String schemeId;
    protected transient String string = null;
    private final int type;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.bindings.Binding");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    protected Binding(ParameterizedCommand command, String schemeId, String contextId, String locale, String platform, String windowManager, int type) {
        if (schemeId == null) {
            throw new NullPointerException("The scheme cannot be null");
        }
        if (contextId == null) {
            throw new NullPointerException("The context cannot be null");
        }
        if (type != 0 && type != 1) {
            throw new IllegalArgumentException("The type must be SYSTEM or USER");
        }
        this.command = command;
        this.schemeId = schemeId.intern();
        this.contextId = contextId.intern();
        this.locale = locale == null ? null : locale.intern();
        this.platform = platform == null ? null : platform.intern();
        this.type = type;
    }

    final boolean deletes(Binding binding) {
        boolean deletes = true;
        deletes &= Util.equals(this.getContextId(), binding.getContextId());
        deletes &= Util.equals(this.getTriggerSequence(), binding.getTriggerSequence());
        if (this.getLocale() != null) {
            deletes &= !Util.equals(this.getLocale(), binding.getLocale());
        }
        if (this.getPlatform() != null) {
            deletes &= !Util.equals(this.getPlatform(), binding.getPlatform());
        }
        deletes &= binding.getType() == 0;
        return deletes &= Util.equals(this.getParameterizedCommand(), null);
    }

    public final boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof Binding)) {
            return false;
        }
        Binding binding = (Binding)object;
        if (!Util.equals(this.getParameterizedCommand(), binding.getParameterizedCommand())) {
            return false;
        }
        if (!Util.equals(this.getContextId(), binding.getContextId())) {
            return false;
        }
        if (!Util.equals(this.getTriggerSequence(), binding.getTriggerSequence())) {
            return false;
        }
        if (!Util.equals(this.getLocale(), binding.getLocale())) {
            return false;
        }
        if (!Util.equals(this.getPlatform(), binding.getPlatform())) {
            return false;
        }
        if (!Util.equals(this.getSchemeId(), binding.getSchemeId())) {
            return false;
        }
        return this.getType() == binding.getType();
    }

    public final ParameterizedCommand getParameterizedCommand() {
        return this.command;
    }

    public final String getContextId() {
        return this.contextId;
    }

    public final String getLocale() {
        return this.locale;
    }

    public final String getPlatform() {
        return this.platform;
    }

    public final String getSchemeId() {
        return this.schemeId;
    }

    public abstract TriggerSequence getTriggerSequence();

    public final int getType() {
        return this.type;
    }

    public final int hashCode() {
        if (this.hashCode == -1) {
            this.hashCode = HASH_INITIAL;
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.getParameterizedCommand());
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.getContextId());
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.getTriggerSequence());
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.getLocale());
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.getPlatform());
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.getSchemeId());
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.getType());
            if (this.hashCode == -1) {
                ++this.hashCode;
            }
        }
        return this.hashCode;
    }

    public String toString() {
        if (this.string == null) {
            StringWriter sw = new StringWriter();
            BufferedWriter stringBuffer = new BufferedWriter(sw);
            try {
                stringBuffer.write("Binding(");
                stringBuffer.write(this.getTriggerSequence().toString());
                stringBuffer.write(44);
                stringBuffer.newLine();
                stringBuffer.write(9);
                stringBuffer.write(this.command == null ? "" : this.command.toString());
                stringBuffer.write(44);
                stringBuffer.newLine();
                stringBuffer.write(9);
                stringBuffer.write(this.schemeId);
                stringBuffer.write(44);
                stringBuffer.newLine();
                stringBuffer.write(9);
                stringBuffer.write(this.contextId);
                stringBuffer.write(44);
                stringBuffer.write(this.locale == null ? "" : this.locale);
                stringBuffer.write(44);
                stringBuffer.write(this.platform == null ? "" : this.platform);
                stringBuffer.write(44);
                stringBuffer.write(this.type == 0 ? "system" : "user");
                stringBuffer.write(41);
                stringBuffer.flush();
            }
            catch (IOException iOException) {}
            this.string = sw.toString();
        }
        return this.string;
    }
}

