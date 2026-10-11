/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.util.Collections;
import java.util.Map;
import org.eclipse.equinox.p2.metadata.ITouchpointData;
import org.eclipse.equinox.p2.metadata.ITouchpointInstruction;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TouchpointData
implements ITouchpointData {
    private Map<String, ITouchpointInstruction> instructions;

    public int hashCode() {
        return 31 + (this.instructions == null ? 0 : this.instructions.hashCode());
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof ITouchpointData)) {
            return false;
        }
        ITouchpointData other = (ITouchpointData)obj;
        return !(this.instructions == null ? other.getInstructions() != null : !this.instructions.equals(other.getInstructions()));
    }

    public TouchpointData(Map<String, ITouchpointInstruction> instructions) {
        this.instructions = instructions;
    }

    @Override
    public ITouchpointInstruction getInstruction(String instructionKey) {
        return this.instructions.get(instructionKey);
    }

    @Override
    public Map<String, ITouchpointInstruction> getInstructions() {
        return Collections.unmodifiableMap(this.instructions);
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        for (Map.Entry<String, ITouchpointInstruction> instruction : this.instructions.entrySet()) {
            result.append(instruction.getKey()).append(" -> ").append(instruction.getValue()).append('\n');
        }
        return result.toString();
    }
}

