package com.jse52.sensors;

/**
 * Some types to allow type variability in sensors.
 */
public enum Types {
    String, Integer, Long, Float, Double, Character, Boolean;


    public java.lang.String asString(Object o) {
        if (o == null) return "null";
        switch (this) {
            case String:
                return (java.lang.String) o;
            case Integer:
                return ((java.lang.Integer) o).toString();
            case Long:
                return ((java.lang.Long) o).toString();
            case Float:
                return ((java.lang.Float) o).toString();
            case Double:
                return ((java.lang.Double) o).toString();
            case Character:
                return ((java.lang.Character) o).toString();
            case Boolean:
                return ((java.lang.Boolean) o).toString();
        }
        return "null";
    }
}
