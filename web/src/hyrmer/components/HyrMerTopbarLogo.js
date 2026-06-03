import React from 'react';
import classNames from 'classnames';

import LinkedLogo from '../../components/Logo/LinkedLogo';
import logoCss from '../../components/Logo/Logo.module.css';

import css from '../styles/topbar.module.css';

/**
 * Topbar-logo för HyrMer. Wrappar Sharetribe LinkedLogo med projektspecifik styling.
 *
 * @param {Object} props – samma props som LinkedLogo (className, layout, linkToExternalSite, …)
 */
const HyrMerTopbarLogo = props => {
  const { logoImageClassName, logoClassName, layout = 'desktop', ...rest } = props;

  const isMobile = layout === 'mobile';
  const layoutLogoImageClass = isMobile ? css.logoImageMobile : css.logoImageDesktop;
  const layoutLogoWrapperClass = isMobile ? css.logoWrapperMobile : css.logoWrapperDesktop;

  return (
    <LinkedLogo
      {...rest}
      layout={layout}
      logoClassName={classNames(logoCss.root, layoutLogoWrapperClass, logoClassName)}
      logoImageClassName={classNames(layoutLogoImageClass, logoImageClassName)}
    />
  );
};

export default HyrMerTopbarLogo;