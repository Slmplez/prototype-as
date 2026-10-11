/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package com.etas.amd620.core.ComponentProject;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

public enum ExperimentTargetType implements Enumerator
{
    EXPERIMENT_OFFLINE_PC(0, "ExperimentOfflinePC", "ExperimentOfflinePC"),
    EXPERIMENT_ONLINE_PC(1, "ExperimentOnlinePC", "ExperimentOnlinePC"),
    EXPERIMENT_OFFLINE_RP(2, "ExperimentOfflineRP", "ExperimentOfflineRP"),
    EXPERIMENT_ONLINE_RP(3, "ExperimentOnlineRP", "ExperimentOnlineRP"),
    EXPERIMENT_ONLINE_ETAS_EE(4, "ExperimentOnlineEtasEE", "ExperimentOnlineEtasEE"),
    EXPERIMENT_ONLINE_INCA(5, "ExperimentOnlineINCA", "ExperimentOnlineINCA"),
    EXPERIMENT_ONLINE_INTECRIO(6, "ExperimentOnlineINTECRIO", "ExperimentOnlineINTECRIO");

    public static final int EXPERIMENT_OFFLINE_PC_VALUE = 0;
    public static final int EXPERIMENT_ONLINE_PC_VALUE = 1;
    public static final int EXPERIMENT_OFFLINE_RP_VALUE = 2;
    public static final int EXPERIMENT_ONLINE_RP_VALUE = 3;
    public static final int EXPERIMENT_ONLINE_ETAS_EE_VALUE = 4;
    public static final int EXPERIMENT_ONLINE_INCA_VALUE = 5;
    public static final int EXPERIMENT_ONLINE_INTECRIO_VALUE = 6;
    private static final ExperimentTargetType[] VALUES_ARRAY;
    public static final List<ExperimentTargetType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ExperimentTargetType[]{EXPERIMENT_OFFLINE_PC, EXPERIMENT_ONLINE_PC, EXPERIMENT_OFFLINE_RP, EXPERIMENT_ONLINE_RP, EXPERIMENT_ONLINE_ETAS_EE, EXPERIMENT_ONLINE_INCA, EXPERIMENT_ONLINE_INTECRIO};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ExperimentTargetType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ExperimentTargetType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ExperimentTargetType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ExperimentTargetType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ExperimentTargetType get(int value) {
        switch (value) {
            case 0: {
                return EXPERIMENT_OFFLINE_PC;
            }
            case 1: {
                return EXPERIMENT_ONLINE_PC;
            }
            case 2: {
                return EXPERIMENT_OFFLINE_RP;
            }
            case 3: {
                return EXPERIMENT_ONLINE_RP;
            }
            case 4: {
                return EXPERIMENT_ONLINE_ETAS_EE;
            }
            case 5: {
                return EXPERIMENT_ONLINE_INCA;
            }
            case 6: {
                return EXPERIMENT_ONLINE_INTECRIO;
            }
        }
        return null;
    }

    private ExperimentTargetType(int value, String name, String literal) {
        this.value = value;
        this.name = name;
        this.literal = literal;
    }

    public int getValue() {
        return this.value;
    }

    public String getName() {
        return this.name;
    }

    public String getLiteral() {
        return this.literal;
    }

    public String toString() {
        return this.literal;
    }
}

