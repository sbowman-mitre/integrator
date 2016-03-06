//
// Created by Stuart on 3/5/2016.
//

#ifndef INTEGRATOR_INTEGRATOR_H
#define INTEGRATOR_INTEGRATOR_H

namespace integrator {

    class Trapezoidal {
    public:
        Trapezoidal();
        double integrate(const int stepSize, const double xdata[], const double ydata[]);
    };
}
#endif //INTEGRATOR_INTEGRATOR_H
