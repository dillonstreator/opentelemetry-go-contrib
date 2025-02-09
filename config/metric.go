// Copyright The OpenTelemetry Authors
// SPDX-License-Identifier: Apache-2.0

package config // import "github.com/dillonstreator/opentelemetry-go-contrib/config"

import (
	"go.opentelemetry.io/otel/metric"
	"go.opentelemetry.io/otel/metric/noop"
	sdkmetric "go.opentelemetry.io/otel/sdk/metric"
)

func initMeterProvider(cfg configOptions) metric.MeterProvider {
	if cfg.opentelemetryConfig.MeterProvider == nil {
		return noop.NewMeterProvider()
	}
	return sdkmetric.NewMeterProvider()
}
